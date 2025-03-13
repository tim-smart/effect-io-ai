Package: `effect`<br />
Module: `TestServices`<br />

## TestServices.withAnnotationsScoped

Sets the implementation of the annotations service to the specified value
and restores it to its original value when the scope is closed.

**Signature**

```ts
declare const withAnnotationsScoped: (annotations: Annotations.TestAnnotations) => Effect.Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L95)

Since v2.0.0