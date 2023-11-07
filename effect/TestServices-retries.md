# retries

The number of times to retry flaky tests.

To import and use `retries` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.retries
```

**Signature**

```ts
export declare const retries: Effect.Effect<never, never, number>
```
