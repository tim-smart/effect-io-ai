## TestConfig

The `TestConfig` service provides access to default configuration settings
used by tests, including the number of times to repeat tests to ensure
they are stable, the number of times to retry flaky tests, the sufficient
number of samples to check from a random variable, and the maximum number of
shrinkings to minimize large failures.

**Signature**

```ts
export interface TestConfig {
  /**
   * The number of times to repeat tests to ensure they are stable.
   */
  readonly repeats: number
  /**
   * The number of times to retry flaky tests.
   */
  readonly retries: number
  /**
   * The number of sufficient samples to check for a random variable.
   */
  readonly samples: number
  /**
   * The maximum number of shrinkings to minimize large failures
   */
  readonly shrinks: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestConfig.ts#L15)

Since v2.0.0