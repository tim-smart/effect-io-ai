# project

Projects out part of one of the services output by this layer using the
specified function.

To import and use `project` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.project
undefined

**Signature**

```ts
export declare const project: {
  <A extends Context.Tag<any, any>, B extends Context.Tag<any, any>>(
    tagA: A,
    tagB: B,
    f: (a: Context.Tag.Service<A>) => Context.Tag.Service<B>
  ): <RIn, E>(self: Layer<Context.Tag.Identifier<A>, E, RIn>) => Layer<Context.Tag.Identifier<B>, E, RIn>
  <RIn, E, A extends Context.Tag<any, any>, B extends Context.Tag<any, any>>(
    self: Layer<Context.Tag.Identifier<A>, E, RIn>,
    tagA: A,
    tagB: B,
    f: (a: Context.Tag.Service<A>) => Context.Tag.Service<B>
  ): Layer<Context.Tag.Identifier<B>, E, RIn>
}
```
