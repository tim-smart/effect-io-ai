Package: `effect`<br />
Module: `Command`<br />

## Command.Services

A utility type to extract the required services type from a `Command`.

**Signature**

```ts
type Services<C> = C extends Command<
  infer _Name,
  infer _Input,
  infer _ContextInput,
  infer _Error,
  infer _Requirements
> ? _Requirements :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Command.ts#L381)

Since v4.0.0