# service

Constructs a layer that accesses and returns the specified service from the
context.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const service: <T extends Context.Tag<any, any>>(
  tag: T
) => Layer<Context.Tag.Identifier<T>, never, Context.Tag.Identifier<T>>
```
