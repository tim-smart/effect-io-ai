Package: `effect`<br />
Module: `Headers`<br />

## Headers.CurrentRedactedNames

Context reference listing header names or patterns that should be redacted when `Headers` are inspected or rendered.

**Details**

Defaults include `authorization`, `cookie`, `set-cookie`, and `x-api-key`.

**Signature**

```ts
declare const CurrentRedactedNames: Context.Reference<ReadonlyArray<string | RegExp>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L473)

Since v4.0.0