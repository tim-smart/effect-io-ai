Package: `effect`<br />
Module: `Cause`<br />

## Cause.done

Creates an Effect that fails with a `Done` error. Shorthand for
`Effect.fail(Cause.Done(value))`.

**See**

- `| Done` — create the signal value without an Effect

**Signature**

```ts
declare const done: <A = void>(value?: A) => Effect.Effect<never, Done<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1269)

Since v4.0.0