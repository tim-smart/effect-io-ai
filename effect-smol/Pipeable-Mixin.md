Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.Mixin

Returns a subclass of the provided class that adds the standard `pipe`
method.

**When to use**

Use to add pipe support to an existing class without extending a base class
or modifying its prototype.

**Details**

The original constructor and instance members are preserved, and the added
method delegates to `pipeArguments`.

**See**

- `Prototype` for a reusable prototype object
- `Class` for a base constructor to extend

**Signature**

```ts
declare const Mixin: <TBase extends new (...args: ReadonlyArray<any>) => any>(klass: TBase) => TBase & PipeableConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pipeable.ts#L668)

Since v4.0.0