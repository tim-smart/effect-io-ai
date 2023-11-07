# dieMessage

Returns an effect that dies with a `RuntimeException` having the specified
text message. This method can be used for terminating a fiber because a
defect has been detected in the code.

To import and use `dieMessage` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.dieMessage
```

**Signature**

```ts
export declare const dieMessage: (message: string) => Effect<never, never, never>
```
