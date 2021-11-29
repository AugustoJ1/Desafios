import pandas as pd
import datetime as dt

base_clientes = pd.read_csv('C:/Users/Augus/OneDrive/Área de Trabalho/Case P&C_CSAT/Base Clientes.csv', sep = ';')
base_chamados = pd.read_csv('C:/Users/Augus/OneDrive/Área de Trabalho/Case P&C_CSAT/Base Chamados.csv', sep = ';')
base_completa = base_clientes.merge(base_chamados, validate="1:m")
base_completa.head()

base_completa['Data de abertura'] = base_completa['Data de abertura'].astype('datetime64[ns]')
#base_completa['Data de abertura'] = base_completa['Data de abertura'].dt.strftime('%d/%m/%Y')
base_completa['Data de credenciamento'] = base_completa['Data de credenciamento'].astype('datetime64[ns]')
#base_completa['Data de credenciamento'] = base_completa['Data de credenciamento'].dt.strftime('%d/%m/%Y')

filtro = base_completa['Resposta Pesquisa de Satisfação'] == 'Sem resposta'
base_completa = base_completa.drop(base_completa[filtro].index)
base_completa['Resposta Pesquisa de Satisfação'] = pd.to_numeric(base_completa['Resposta Pesquisa de Satisfação'])
filtro2 = base_completa['Resposta Pesquisa de Satisfação'] >= 4
filtro3 = base_completa['Resposta Pesquisa de Satisfação'] < 4
base_completa.loc[filtro2, 'Resposta Pesquisa de Satisfação'] = 'Promotor'
base_completa.loc[filtro3, 'Resposta Pesquisa de Satisfação'] = 'Detrator'
base_completa

base_completa.to_csv('Base de dados.csv', index=False ,encoding='utf-8')
