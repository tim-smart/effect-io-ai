# provideContext

Provides the sink with its required context, which eliminates its
dependency on `R`.

To import and use `provideContext` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <A, In, L, E>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, never>
  <A, In, L, E, R>(self: Sink<A, In, L, E, R>, context: Context.Context<R>): Sink<A, In, L, E, never>
}
```
