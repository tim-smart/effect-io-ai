Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.EqualsType

Value type accepted by `equals` comparisons for a table key path or index.

**Signature**

```ts
type EqualsType<Table, Index, KeyPath, Type> = KeyPath extends keyof Type ? Type[KeyPath]
    : { [I in keyof KeyPath]: KeyPath[I] extends keyof Type ? Type[KeyPath[I]] | [] : never }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L230)

Since v4.0.0