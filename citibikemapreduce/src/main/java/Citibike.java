// cc Citibike Application to map the trip lengths and reduce to max trip length per key
// vv Citibike
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
public class Citibike 
{
    public static void main(String[] args) throws Exception 
    {
        if (args.length != 2) 
        {
            System.err.println("Usage: Citibike <input path> <output path>");
            System.exit(-1);
        }

        Job job = new Job();
        job.setJarByClass(Citibike.class);
        job.setJobName("Citibike");
        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));
        job.setMapperClass(CitibikeMapper.class);
        job.setReducerClass(CitibikeReducer.class);
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(IntWritable.class);
        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}
// ^^ Citibike