desc "Trim thread count for all boards to the most recently updated 100. NOTE: This will take a while..."
task :purge do
  Board.all.each do |b|
    b.threadds.each do |t|
      if !Board.find(b).threadds_by_post_id.first(100).include?(Threadd.find(t))
        t.destroy
      end
    end
  end
end