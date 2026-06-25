Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeFilterGroup

Groups multiple checks into a single `SchemaAST.FilterGroup`, applying
optional shared annotations to the group as a whole.

**Signature**

```ts
declare const makeFilterGroup: <T>(checks: readonly [SchemaAST.Check<T>, ...Array<SchemaAST.Check<T>>], annotations?: Annotations.Filter | undefined) => SchemaAST.FilterGroup<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6452)

Since v4.0.0