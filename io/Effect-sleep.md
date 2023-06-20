# sleep

Returns an effect that suspends for the specified duration. This method is
asynchronous, and does not actually block the fiber executing the effect.

To import and use `sleep` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.sleep
```

**Signature**

```ts
export declare const sleep: (duration: Duration.Duration) => Effect<never, never, void>
```
