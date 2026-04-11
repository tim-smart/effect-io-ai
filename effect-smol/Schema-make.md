Package: `effect`<br />
Module: `Schema`<br />

## Schema.make

Creates a schema from an AST (Abstract Syntax Tree) node.

This is the fundamental constructor for all schemas in the Effect Schema
library. It takes an AST node and wraps it in a fully-typed schema that
preserves all type information and provides the complete schema API.

The `make` function is used internally to create all primitive schemas like
`String`, `Number`, `Boolean`, etc., as well as more complex schemas. It's
the bridge between the untyped AST representation and the strongly-typed
schema.

**Signature**

```ts
declare const make: <S extends Top>(ast: S["ast"], options?: object) => S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1460)

Since v4.0.0