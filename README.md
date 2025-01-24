# flutter_module

A new Flutter project.

## Getting Started

For help getting started with Flutter development, view the online
[documentation](https://flutter.dev/).

For instructions integrating Flutter modules to your existing applications,
see the [add-to-app documentation](https://flutter.dev/to/add-to-app).

## bloc https://juejin.cn/post/7265110591634980919


# 一次性代码生成
通过在项目根目录中运行`dart run build_runner build --delete-conflicting-outputs`，
您可以在需要时为模型生成 JSON 序列化代码。这会触发一次性构建，
该构建会遍历源文件、选择相关文件并为它们生成必要的序列化代码。

虽然这很方便，但如果您不必在每次更改模型类时手动运行构建，那就太好了。

# 持续生成代码
观察器使我们的源代码生成过程更加方便。它监视我们项目文件中的变化，并在需要时自动构建必要的文件。
通过`dart run build_runner watch --delete-conflicting-outputs`在项目根目录中运行来启动观察器。

