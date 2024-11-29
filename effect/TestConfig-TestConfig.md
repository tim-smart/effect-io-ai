# TestConfig

The `TestConfig` service provides access to default configuration settings
used by tests, including the number of times to repeat tests to ensure
they are stable, the number of times to retry flaky tests, the sufficient
number of samples to check from a random variable, and the maximum number of
shrinkings to minimize large failures.

To import and use `TestConfig` from the "TestConfig" module:

ts
import \* as TestConfig from "effect/TestConfig"
// Can be accessed like this
TestConfig.TestConfig
undefined
