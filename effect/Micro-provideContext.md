# provideContext

Merge the given `Context` with the current context.

To import and use `provideContext` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.provideContext
undefined

**Signature**

```ts
export declare const provideContext: {
  <XR>(context: Context.Context<XR>): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, XR>>
  <A, E, R, XR>(self: Micro<A, E, R>, context: Context.Context<XR>): Micro<A, E, Exclude<R, XR>>
}
```
