// cc CitibikeMapper for creating key/value pair to measure trip lengths.
// vv CitibikeMapper
import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
public class CitibikeMapper
    extends Mapper<LongWritable, Text, Text, IntWritable> 
    {
        @Override
        public void map(LongWritable key, Text value, Context context)
        throws IOException, InterruptedException 
        {
            String line = value.toString();
            line = line.replace("\"","");
            String comma = ",";
            String[] ParsedLine = line.split(comma);
            String[] dateTime = ParsedLine[1].split(" ");
            String[] date = dateTime[0].split("/");
            if(date.length == 3)
            {    
                String month = date[0];
                String day = date[1];
                String year = date[2];
                //Standardize the length of the month and day
                if(month.length()==1)
                {
                    month = "0"+month;
                }
                if(day.length()==1)
                {
                    day = "0"+day;
                }
                
                if(ParsedLine.length == 15)
                {
                    String origin;
                    int triplength;

                    origin = year+"/"+month+"/"+day+","+ParsedLine[3]+","+ParsedLine[7];
                    triplength = Integer.parseInt(ParsedLine[0]);
                    context.write(new Text(origin), new IntWritable(triplength));
                }
                    else{}
            }
                else{}
        }
    }
