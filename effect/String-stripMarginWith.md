Package: `effect`<br />
Module: `String`<br />

## String.stripMarginWith

For every line in this string, strip a leading prefix consisting of blanks
or control characters followed by the character specified by `marginChar`
from the line.

**Signature**

```ts
declare const stripMarginWith: { (marginChar: string): (self: string) => string; (self: string, marginChar: string): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L649)

Since v2.0.0