Package: `effect`<br />
Module: `Terminal`<br />

## Terminal.isQuitError

Returns `true` if the provided value is a `Terminal.QuitError`.

**When to use**

Use to narrow unknown failures to `QuitError` when handling terminal input
cancellation.

**Details**

Returns `true` when the value carries the `QuitError` runtime marker and
narrows it to `QuitError`.

**See**

- `QuitError` for the error value produced when terminal input is quit

**Signature**

```ts
declare const isQuitError: (u: unknown) => u is QuitError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Terminal.ts#L153)

Since v4.0.0