Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.make

Creates an RPC definition with the supplied tag and optional schemas.

Payload options can be either a schema or struct fields. `stream: true` wraps
the success and error schemas in a stream schema and sets the normal error
schema to `Schema.Never`. `primaryKey` creates a payload class with a
primary key derived from the payload value.

**Signature**

```ts
declare const make: <const Tag extends string, Payload extends Schema.Top | Schema.Struct.Fields = Schema.Void, Success extends Schema.Top = Schema.Void, Error extends Schema.Top = Schema.Never, const Stream extends boolean = false>(tag: Tag, options?: { readonly payload?: Payload; readonly success?: Success; readonly error?: Error; readonly defect?: DefectSchema; readonly stream?: Stream; readonly primaryKey?: [Payload] extends [Schema.Struct.Fields] ? ((payload: Payload extends Schema.Struct.Fields ? Struct.Simplify<Schema.Struct<Payload>["Type"]> : Payload["Type"]) => string) : never; }) => Rpc<Tag, Payload extends Schema.Struct.Fields ? Schema.Struct<Payload> : Payload, Stream extends true ? RpcSchema.Stream<Success, Error> : Success, Stream extends true ? typeof Schema.Never : Error>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L893)

Since v4.0.0