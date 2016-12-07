// cc CitibikeReducer Reducer for maximum trip length
// vv CitibikeReducer
import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;
public class CitibikeReducer
    extends Reducer<Text, IntWritable, Text, Text> 
    {
    @Override
        public void reduce(Text key, Iterable<IntWritable> values, Context context)
        throws IOException, InterruptedException 
        {
            int count = 0;
            double average = 0;
            long meanValue = 0;
            double cumulative = 0;
            String newValue;
            for (IntWritable value : values) 
            {
                count++;
                cumulative = cumulative + value.get();
                average = cumulative/count;
                meanValue = Math.round(average);
            }

            if(count > 5)
            {
                newValue = ","+String.valueOf(count)+","+String.valueOf(meanValue);
                context.write(key, new Text(newValue));
            }
                else {}
        }
    } 