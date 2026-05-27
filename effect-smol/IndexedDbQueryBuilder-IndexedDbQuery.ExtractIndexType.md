Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.ExtractIndexType

Value type accepted by range comparisons for a table key path or index, including partial tuples for compound indexes.

**Signature**

```ts
type ExtractIndexType<Table, Index, KeyPath, Type> = KeyPath extends keyof Type ? Type[KeyPath]
    : KeyPath extends readonly [infer K, ...infer Rest] ? K extends keyof Type ? [
          Type[K],
          ...{ [P in keyof Rest]?: Rest[P] extends keyof Type ? Type[Rest[P]] | [] : never }
        ] :
      never :
    never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L251)

Since v4.0.0