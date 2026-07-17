Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.make

Constructs a `KeyValueStore` from primitive store operations.

**Details**

Default implementations are derived for `has`, `isEmpty`, `modify`, and
`modifyUint8Array` unless they are provided in the options.

**Signature**

```ts
declare const make: (options: MakeOptions) => KeyValueStore
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyValueStore.ts#L224)

Since v4.0.0