#!/usr/bin/env bash
export WORKLOAD=pod

source ./common.sh

for pairs in 1
do
export pairs=${pairs}
deploy_workload
wait_for_benchmark
assign_uuid
run_benchmark_comparison
delete_benchmark
done
print_uuid
generate_csv
