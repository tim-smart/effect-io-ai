# project

Projects out part of one of the services output by this layer using the
specified function.

To import and use `project` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.project
```

**Signature**

```ts
export declare const project: {
  <A extends Context.Tag<any, any>, B extends Context.Tag<any, any>>(
    tagA: A,
    tagB: B,
    f: (a: Context.Tag.Service<A>) => Context.Tag.Service<B>
  ): <RIn, E>(self: Layer<RIn, E, Context.Tag.Identifier<A>>) => Layer<RIn, E, Context.Tag.Identifier<B>>
  <RIn, E, A extends Context.Tag<any, any>, B extends Context.Tag<any, any>>(
    self: Layer<RIn, E, Context.Tag.Identifier<A>>,
    tagA: A,
    tagB: B,
    f: (a: Context.Tag.Service<A>) => Context.Tag.Service<B>
  ): Layer<RIn, E, Context.Tag.Identifier<B>>
}
```
