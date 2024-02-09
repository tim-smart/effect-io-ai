# fromEffectTagged

Constructs a data source from a list of tags paired to functions, that takes
a list of requests and returns a list of results of the same size. Each item
in the result list must correspond to the item at the same index in the
request list.

To import and use `fromEffectTagged` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.fromEffectTagged
```

**Signature**

```ts
export declare const fromEffectTagged: <A extends Request.Request<any, any> & { readonly _tag: string }>() => <
  Fns extends {
    readonly [Tag in A["_tag"]]: [Extract<A, { readonly _tag: Tag }>] extends [infer Req]
      ? Req extends Request.Request<infer ReqA, infer ReqE>
        ? (requests: Req[]) => Effect.Effect<Iterable<ReqA>, ReqE, any>
        : never
      : never
  }
>(
  fns: Fns
) => RequestResolver<A, ReturnType<Fns[keyof Fns]> extends Effect.Effect<infer _A, infer _E, infer R> ? R : never>
```
