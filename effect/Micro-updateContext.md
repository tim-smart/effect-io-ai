# updateContext

Update the Context with the given mapping function.

To import and use `updateContext` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.updateContext
undefined

**Signature**

```ts
export declare const updateContext: {
  <R2, R>(
    f: (context: Context.Context<R2>) => Context.Context<NoInfer<R>>
  ): <A, E>(self: Micro<A, E, R>) => Micro<A, E, R2>
  <A, E, R, R2>(self: Micro<A, E, R>, f: (context: Context.Context<R2>) => Context.Context<NoInfer<R>>): Micro<A, E, R2>
}
```
