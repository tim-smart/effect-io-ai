Package: `effect`<br />
Module: `Command`<br />

## Command.Error

A utility type to extract the error type from a `Command`.

**Signature**

```ts
type Error<C> = C extends Command<
  infer _Name,
  infer _Input,
  infer _ContextInput,
  infer _Error,
  infer _Requirements
> ? _Error :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L320)

Since v4.0.0