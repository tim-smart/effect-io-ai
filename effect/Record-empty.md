Package: `effect`<br />
Module: `Record`<br />

## Record.empty

Creates a new, empty record.

**Signature**

```ts
declare const empty: <K extends string | symbol = never, V = never>() => Record<ReadonlyRecord.NonLiteralKey<K>, V>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L61)

Since v2.0.0