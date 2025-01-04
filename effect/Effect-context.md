# context

Accesses the full context of the effect.

**Details**

This function provides the ability to access the entire context required by
an effect. The context is a container that holds dependencies or environment
values needed by an effect to run. By using this function, you can retrieve
and work with the context directly within an effect.

To import and use `context` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.context
```

**Signature**

```ts
export declare const context: <R>() => Effect<Context.Context<R>, never, R>
```
