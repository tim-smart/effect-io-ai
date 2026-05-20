Package: `effect`<br />
Module: `References`<br />

## References.LogToStderr

Reference controlling whether the default console logger writes to stderr.

**Details**

When set to `true`, the pretty console logger uses `console.error`; otherwise
it uses `console.log`.

**Signature**

```ts
declare const LogToStderr: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L603)

Since v4.0.0