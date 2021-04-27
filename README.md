# TerraformSpike
Terraform Samples

## Logging Guide
1. Terraform has detailed logs which can be enabled by setting the TF_LOG environment variable to any value. 
This will cause detailed logs to appear on stderr.
2. You can set TF_LOG to one of the log levels TRACE, DEBUG, INFO, WARN or ERROR to change the verbosity of the logs. TRACE is the most verbose and it is the default if TF_LOG is set to something other than a log level name.
3. To persist logged output you can set TF_LOG_PATH in order to force the log to always be appended to a specific file when logging is enabled. 
4. If Terraform ever crashes (a "panic" in the Go runtime), it saves a log file with the debug logs from the session as well as the panic message and backtrace to crash.log.

Note that even when TF_LOG_PATH is set, TF_LOG must be set in order for any logging to be enabled.
