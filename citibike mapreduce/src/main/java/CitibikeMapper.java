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
    
            CSVReader R = new CSVReader(new StringReader(line));

            String[] ParsedLine = R.readNext();
            R.close();

            String date;
            String origin;
            int triplength;


            date = ParsedLine[1].substring(0, 10);
            origin = ParsedLine[3]+","+ParsedLine[7]+","+date);
            triplength = Integer.parseInt(ParsedLine[0]);

            context.write(new Text(origin), new IntWritable(triplength));
        }
    }
}

