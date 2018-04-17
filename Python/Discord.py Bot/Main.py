import discord
from discord.ext import commands
import requests
import random

bot = commands.Bot(command_prefix="BotPrefix")
version="0.0.1_a or a version you prefer!"

@bot.command(pass_context=True)
async def info(ctx):
  embed=discord.Embed(title="Titles",description="Description",color=0xFFFFFF) #Color must be in hexadecimal
  await 


@bot.ready
async def on_ready():
  print("Bot is ready for usage!")
  
  
