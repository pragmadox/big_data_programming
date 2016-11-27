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
        public void map(LongWritable key, IntWritable value, Context context)
        throws IOException, InterruptedException 
        {
            String line = value.toString();
            comma = ",";
            String[] ParsedLine = value.split(comma);
            
            if(ParsedLine.length == 15)
            {
                String date;
                String origin;
                String triplength;

                date = ParsedLine[1].substring(0, 10);
                origin = ParsedLine[3]+","+ParsedLine[7]+","+date);
                triplength = Integer.parseInt(ParsedLine[0]);
                context.write(new Text(origin), new IntWritable(triplength));
            }
                else
                {}
        }
    }

