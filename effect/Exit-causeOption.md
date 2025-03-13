Package: `effect`<br />
Module: `Exit`<br />

## Exit.causeOption

Returns a `Some<Cause<E>>` if the specified exit is a `Failure`, `None`
otherwise.

**Signature**

```ts
declare const causeOption: <A, E>(self: Exit<A, E>) => Option.Option<Cause.Cause<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L140)

Since v2.0.0