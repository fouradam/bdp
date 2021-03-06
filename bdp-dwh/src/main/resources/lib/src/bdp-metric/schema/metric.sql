-- noinspection sqlnodatasourceinspectionforfile

drop table if exists src.bdp_metric_metric;
create table if not exists src.bdp_metric_metric (
  id bigint,
  name string,
  hostname string,
  value bigint,
  `timestamp` timestamp,
  imported_time timestamp
)
partitioned by (creation_date string)
stored as parquet;
