Package: `effect`<br />
Module: `Statement`<br />

## Statement.defaultTransforms

Builds value, object, and row-array transformers that rename object keys with
the supplied function and optionally recurse into nested object arrays.

**Signature**

```ts
declare const defaultTransforms: (transformer: (str: string) => string, nested?: boolean) => { readonly value: (value: any) => any; readonly object: (obj: Record<string, any>) => any; readonly array: <A extends object>(rows: ReadonlyArray<A>) => ReadonlyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L1158)

Since v4.0.0