Package: `effect`<br />
Module: `String`<br />

## String.noCase

Normalizes a string by splitting it into word parts, transforming each part,
and joining the parts with a configurable delimiter.

**When to use**

Use to normalize mixed-case, snake_case, kebab-case, or spaced input into
custom word-case output when you need a delimiter or part transform that the
fixed case helpers do not provide.

**See**

- `pascalCase` for fixed PascalCase output
- `camelCase` for fixed lower-initial camelCase output
- `constantCase` for fixed uppercase underscore-separated output
- `kebabCase` for fixed lowercase hyphen-separated output
- `snakeCase` for fixed lowercase underscore-separated output

**Signature**

```ts
declare const noCase: { (options?: { readonly splitRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly stripRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly delimiter?: string | undefined; readonly transform?: (part: string, index: number, parts: ReadonlyArray<string>) => string; }): (self: string) => string; (self: string, options?: { readonly splitRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly stripRegExp?: RegExp | ReadonlyArray<RegExp> | undefined; readonly delimiter?: string | undefined; readonly transform?: (part: string, index: number, parts: ReadonlyArray<string>) => string; }): string; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1304)

Since v4.0.0