Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeFilterGroup

Groups multiple checks into a single `AST.FilterGroup`, applying
optional shared annotations to the group as a whole.

**Signature**

```ts
declare const makeFilterGroup: <T>(checks: readonly [AST.Check<T>, ...Array<AST.Check<T>>], annotations?: Annotations.Filter | undefined) => AST.FilterGroup<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4893)

Since v4.0.0