# clock

Retreives the `Clock` service from the context

To import and use `clock` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.clock
```

**Signature**

```ts
export declare const clock: (_: void) => Effect<never, never, Clock.Clock>
```
