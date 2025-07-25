Package: `effect`<br />
Module: `Layer`<br />

## Layer.updateService

Updates a service in the context with a new implementation.

**Details**

This function modifies the existing implementation of a service in the
context. It retrieves the current service, applies the provided
transformation function `f`, and replaces the old service with the
transformed one.

**When to Use**

This is useful for adapting or extending a service's behavior during the
creation of a layer.

**Signature**

```ts
declare const updateService: (<I, A>(tag: Context.Tag<I, A>, f: (a: A) => A) => <A1, E1, R1>(layer: Layer<A1, E1, R1>) => Layer<A1, E1, I | R1>) & (<A1, E1, R1, I, A>(layer: Layer<A1, E1, R1>, tag: Context.Tag<I, A>, f: (a: A) => A) => Layer<A1, E1, I | R1>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1214)

Since v3.13.0