Package: `effect`<br />
Module: `Headers`<br />

## Headers.redact

Returns a plain record with selected header values wrapped in `Redacted`.

String keys are normalized to lowercase before matching; regular expressions are tested against the stored header names.

**Signature**

```ts
declare const redact: { (key: string | RegExp | ReadonlyArray<string | RegExp>): (self: Headers) => Record<string, string | Redacted.Redacted>; (self: Headers, key: string | RegExp | ReadonlyArray<string | RegExp>): Record<string, string | Redacted.Redacted>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L360)

Since v4.0.0