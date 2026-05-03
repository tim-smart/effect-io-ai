Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.custom

Create a custom Rpc constructor, that can transform the output schemas.

```typescript
import { Schema } from "effect"
import { Rpc } from "effect/unstable/rpc"

// Create a custom Rpc wrapper definition by transforming the success and error
// schemas.
export interface RpcWithPagination extends Rpc.Custom {
  readonly out: Rpc.Custom.Out<
    Paginated<this["success"]>,
    this["error"]
  >
}

// The type definition for the transformed success schema.
export interface Paginated<S extends Schema.Top> extends
  Schema.Struct<{
    readonly offset: Schema.Number
    readonly total: Schema.Number
    readonly results: Schema.$Array<S>
  }>
{}

// You can then implement the schema transformation using `Rpc.custom`
export const makePaginated = Rpc.custom<RpcWithPagination>((schemas) => ({
  ...schemas,
  success: Schema.Struct({
    offset: Schema.Number,
    total: Schema.Number,
    results: Schema.Array(schemas.success)
  })
}))

// You can then use the custom constructor in the same way `Rpc.make` is used.
export const listAllRpc = makePaginated("listAll", {
  success: Schema.String
})
```

**Signature**

```ts
declare const custom: <Def extends Custom>(f: (options: Custom.OutDefault) => (Def & Custom.OutDefault)["out"]) => <const Tag extends string, Payload extends Schema.Top | Schema.Struct.Fields = Schema.Void, Success extends Schema.Top = Schema.Void, Error extends Schema.Top = Schema.Never, const Stream extends boolean = false, Out extends Custom.OutDefault = Custom.Kind<Def, Success, Error>>(tag: Tag, options?: { readonly payload?: Payload; readonly success?: Success; readonly error?: Error; readonly defect?: DefectSchema; readonly stream?: Stream; readonly primaryKey?: [Payload] extends [Schema.Struct.Fields] ? ((payload: Payload extends Schema.Struct.Fields ? Struct.Simplify<Schema.Struct<Payload>["Type"]> : Payload["Type"]) => string) : never; }) => Rpc<Tag, Payload extends Schema.Struct.Fields ? Schema.Struct<Payload> : Payload, Stream extends true ? RpcSchema.Stream<Out["success"], Out["error"]> : Out["success"], Stream extends true ? typeof Schema.Never : Out["error"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L832)

Since v4.0.0