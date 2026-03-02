Package: `effect`<br />
Module: `String`<br />

## String.noCase

Normalize a string to a specific case format

**Signature**

```ts
declare const noCase: { (options?: { readonly splitRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly stripRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly delimiter?: string | undefined; readonly transform?: (part: string, index: number, parts: ReadonlyArray<string>) => string; }): (self: string) => string; (self: string, options?: { readonly splitRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly stripRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly delimiter?: string | undefined; readonly transform?: (part: string, index: number, parts: ReadonlyArray<string>) => string; }): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1157)

Since v4.0.0