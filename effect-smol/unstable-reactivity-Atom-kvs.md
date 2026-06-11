Package: `effect`<br />
Module: `Atom`<br />

## Atom.kvs

Creates a writable atom backed by a `KeyValueStore` entry.

**Details**

Values are encoded and decoded with the supplied schema. In sync mode the atom
exposes the decoded value and writes the default value when the key is missing;
in async mode it exposes an `AsyncResult` of the decoded value.

**Signature**

```ts
declare const kvs: <S extends Schema.Codec<any, any>, const Mode extends "sync" | "async" = never>(options: { readonly runtime: AtomRuntime<KeyValueStore.KeyValueStore, any>; readonly key: string; readonly schema: S; readonly defaultValue: LazyArg<S["Type"]>; readonly mode?: Mode | undefined; }) => Writable<"async" extends Mode ? AsyncResult.AsyncResult<S["Type"]> : S["Type"], S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2107)

Since v4.0.0