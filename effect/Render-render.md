# render

Renders a `DocStream` to a `string`.

**Note**: this method requires using a `Layout` algorithm to layout a `Doc`
into a `DocStream` prior to rendering.

To import and use `render` from the "Render" module:

```ts
import * as Render from "@effect/printer/Render"
// Can be accessed like this
Render.render
```

**Signature**

```ts
export declare const render: <A>(self: DocStream<A>) => string
```
