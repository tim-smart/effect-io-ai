# service

Constructs a layer that accesses and returns the specified service from the
context.

To import and use `service` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.service
```

**Signature**

```ts
export declare const service: <T extends Context.Tag<any, any>>(
  tag: T
) => Layer<Context.Tag.Identifier<T>, never, Context.Tag.Identifier<T>>
```
