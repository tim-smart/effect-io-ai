Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers.ValidateReturn

Validates the return value of a group handler builder, preserving successful
handler collections and producing a descriptive type error when endpoints remain
unhandled.

**Signature**

```ts
type ValidateReturn<A> = ValidateHandlersReturn<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L355)

Since v4.0.0