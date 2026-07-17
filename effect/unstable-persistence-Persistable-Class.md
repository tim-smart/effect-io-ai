Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.Class

Creates request classes that implement `Persistable` and `Request.Request`.

**Details**

The generated class stores the supplied tag, derives its primary key from
the payload, and carries schemas for persisted success and error exits.

**Signature**

```ts
declare const Class: <Config extends { payload: Record<string, unknown>; requires?: any; requestError?: any; } = { payload: {}; }>() => <const Tag extends string, A extends Schema.Constraint = Schema.Void, E extends Schema.Constraint = Schema.Never>(tag: Tag, options: { readonly primaryKey: (payload: Config["payload"]) => string; readonly success?: A | undefined; readonly error?: E | undefined; }) => new (args: Types.EqualsWith<Config["payload"], {}, void, { readonly [P in keyof Config["payload"] as P extends "_tag" ? never : P]: Config["payload"][P]; }>) => { readonly _tag: Tag; } & { readonly [K in keyof Config["payload"]]: Config["payload"][K]; } & Persistable<A, E> & Request.Request<A["Type"], E["Type"] | ("requestError" extends keyof Config ? Config["requestError"] : (PersistenceError | Schema.SchemaError)), A["DecodingServices"] | A["EncodingServices"] | E["DecodingServices"] | E["EncodingServices"] | ("requires" extends keyof Config ? Config["requires"] : never)>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Persistable.ts#L141)

Since v4.0.0