Package: `effect`<br />
Module: `Request`<br />

## Request.Entry

A `Entry<A>` keeps track of a request of type `A` along with a
`Ref` containing the result of the request, existentially hiding the result
type. This is used internally by the library to support data sources that
return different result types for different requests while guaranteeing that
results will be of the type requested.

**Signature**

```ts
export interface Entry<out R> extends Entry.Variance<R> {
  readonly request: R
  readonly result: Deferred<
    [R] extends [Request<infer _A, infer _E>] ? _A : never,
    [R] extends [Request<infer _A, infer _E>] ? _E : never
  >
  readonly listeners: Listeners
  readonly ownerId: FiberId
  readonly state: {
    completed: boolean
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L308)

Since v2.0.0