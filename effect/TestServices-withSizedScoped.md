Package: `effect`<br />
Module: `TestServices`<br />

## TestServices.withSizedScoped

Sets the implementation of the sized service to the specified value and
restores it to its original value when the scope is closed.

**Signature**

```ts
declare const withSizedScoped: (sized: Sized.TestSized) => Effect.Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L268)

Since v2.0.0