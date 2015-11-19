#!/bin/bash

THIS_SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ruby "${THIS_SCRIPTDIR}/step.rb" \
  -s "${xamarin_project}" \
  -t "${xamarin_test_project}" \
  -c "${xamarin_configuration}" \
  -p "${xamarin_platform}" \
  -b "${xamarin_builder}" \
  -i "${is_clean_build}" \
  -u "${xamarin_user}" \
  -a "${test_cloud_api_key}" \
  -d "${test_cloud_devices}" \
  -n "${test_cloud_app_name}" \
  -y "${test_cloud_is_async}" \
  -e "${test_cloud_category}" \
  -f "${test_cloud_fixture}" \
  -r "${test_cloud_series}" \
  -l "${test_cloud_parallelization}"
