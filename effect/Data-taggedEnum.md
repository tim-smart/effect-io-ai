# taggedEnum

Create a constructor for a tagged union of `Data` structs.

You can also pass a `TaggedEnum.WithGenerics` if you want to add generics to
the constructor.

To import and use `taggedEnum` from the "Data" module:

```ts
import * as Data from "effect/Data"
// Can be accessed like this
Data.taggedEnum
```

**Example**

```ts
import { Data } from "effect"

const { BadRequest, NotFound } = Data.taggedEnum<
  | { readonly _tag: "BadRequest"; readonly status: 400; readonly message: string }
  | { readonly _tag: "NotFound"; readonly status: 404; readonly message: string }
>()

const notFound = NotFound({ status: 404, message: "Not Found" })
```

**Example**

```ts
import { Data } from "effect"

type MyResult<E, A> = Data.TaggedEnum<{
  Failure: { readonly error: E }
  Success: { readonly value: A }
}>
interface MyResultDefinition extends Data.TaggedEnum.WithGenerics<2> {
  readonly taggedEnum: MyResult<this["A"], this["B"]>
}
const { Failure, Success } = Data.taggedEnum<MyResultDefinition>()

const success = Success({ value: 1 })
```

**Signature**

```ts
export declare const taggedEnum: {
  <Z extends TaggedEnum.WithGenerics<1>>(): Types.Simplify<
    {
      readonly [Tag in Z["taggedEnum"]["_tag"]]: <A>(
        args: TaggedEnum.Args<TaggedEnum.Kind<Z, A>, Tag, Extract<TaggedEnum.Kind<Z, A>, { readonly _tag: Tag }>>
      ) => TaggedEnum.Value<TaggedEnum.Kind<Z, A>, Tag>
    } & TaggedEnum.GenericMatchers<Z>
  >
  <Z extends TaggedEnum.WithGenerics<2>>(): Types.Simplify<
    {
      readonly [Tag in Z["taggedEnum"]["_tag"]]: <A, B>(
        args: TaggedEnum.Args<TaggedEnum.Kind<Z, A, B>, Tag, Extract<TaggedEnum.Kind<Z, A, B>, { readonly _tag: Tag }>>
      ) => TaggedEnum.Value<TaggedEnum.Kind<Z, A, B>, Tag>
    } & TaggedEnum.GenericMatchers<Z>
  >
  <Z extends TaggedEnum.WithGenerics<3>>(): Types.Simplify<
    {
      readonly [Tag in Z["taggedEnum"]["_tag"]]: <A, B, C>(
        args: TaggedEnum.Args<
          TaggedEnum.Kind<Z, A, B, C>,
          Tag,
          Extract<TaggedEnum.Kind<Z, A, B, C>, { readonly _tag: Tag }>
        >
      ) => TaggedEnum.Value<TaggedEnum.Kind<Z, A, B, C>, Tag>
    } & TaggedEnum.GenericMatchers<Z>
  >
  <Z extends TaggedEnum.WithGenerics<4>>(): Types.Simplify<
    {
      readonly [Tag in Z["taggedEnum"]["_tag"]]: <A, B, C, D>(
        args: TaggedEnum.Args<
          TaggedEnum.Kind<Z, A, B, C, D>,
          Tag,
          Extract<TaggedEnum.Kind<Z, A, B, C, D>, { readonly _tag: Tag }>
        >
      ) => TaggedEnum.Value<TaggedEnum.Kind<Z, A, B, C, D>, Tag>
    } & TaggedEnum.GenericMatchers<Z>
  >
  <A extends { readonly _tag: string }>(): TaggedEnum.Constructor<A>
}
```
