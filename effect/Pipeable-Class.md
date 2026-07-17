Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.Class

Provides a base constructor whose instances implement the standard `Pipeable.pipe`
method.

**When to use**

Use when you need to define a class that supports Effect-style method
chaining through `.pipe(...)`.

**Signature**

```ts
declare const Class: new () => Pipeable
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pipeable.ts#L624)

Since v3.15.0