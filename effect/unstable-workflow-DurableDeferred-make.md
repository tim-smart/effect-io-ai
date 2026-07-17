Package: `effect`<br />
Module: `DurableDeferred`<br />

## DurableDeferred.make

Creates a named durable deferred with optional success and error schemas for
persisted completion.

**Signature**

```ts
declare const make: <Success extends Schema.Constraint = Schema.Void, Error extends Schema.Constraint = Schema.Never>(name: string, options?: { readonly success?: Success | undefined; readonly error?: Error | undefined; }) => DurableDeferred<Success, Error>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DurableDeferred.ts#L84)

Since v4.0.0