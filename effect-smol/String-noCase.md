Package: `effect`<br />
Module: `String`<br />

## String.noCase

Normalizes a string by splitting it into word parts, transforming each part,
and joining the parts with a configurable delimiter.

**Signature**

```ts
declare const noCase: { (options?: { readonly splitRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly stripRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly delimiter?: string | undefined; readonly transform?: (part: string, index: number, parts: ReadonlyArray<string>) => string; }): (self: string) => string; (self: string, options?: { readonly splitRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly stripRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly delimiter?: string | undefined; readonly transform?: (part: string, index: number, parts: ReadonlyArray<string>) => string; }): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1218)

Since v4.0.0