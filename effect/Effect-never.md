# never

An effect that that runs indefinitely and never produces any result. The
moral equivalent of `while(true) {}`, only without the wasted CPU cycles.

**When to Use**

It could be useful for long-running background tasks or to simulate waiting
behavior without actually consuming resources. This effect is ideal for cases
where you want to keep the program alive or in a certain state without
performing any active work.

To import and use `never` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.never
```

**Signature**

```ts
export declare const never: Effect<never, never, never>
```
